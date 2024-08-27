namespace :elecard_api do

  # Для запуска задачи нужно выполнить команду rake elecard_api:fetch_and_populate_test_data
  task fetch_and_populate_test_data: :environment do |t, args|
    puts "\n\n- - - - - - - - - - - -\n"
    puts "\nRake task started at: #{Time.zone.now}"

    # 1. Получаем данные, которые будут задействованы для дальнейших проверок
    headers = { 'Content-Type' => 'application/json' }
    body = {
      key: ENV.fetch('API_KEY_STRING'),
      method: 'GetTasks',
      params: nil
    }

    resp = HTTParty.post(ENV.fetch('API_ENDPOINT'), headers: headers, body: body.to_json)

    # 2. Раскатываем данные на соответствующие модели
    if resp.code == 200 && resp['result'].present?
      resp['result'].each do |test_parsed|
        test = Test.create
        floating_required = false
        test_parsed.each do |circ|
          floating_required = true if circ['x'].instance_of?(Float) || circ['y'].instance_of?(Float) || circ['radius'].instance_of?(Float)

          test.circles.create(center_x: circ['x'], center_y: circ['y'], radius: circ['radius'], floating_required: floating_required)
        end

        test.update(floating_required: floating_required)
      end
      puts "\nRake task finished at: #{Time.zone.now}"
    else
      puts "Rake task failed at: #{Time.zone.now}. Response code: #{resp.code}"
      puts "\nResponse body:"
      print resp.body
    end
    puts "\n\n- - - - - - - - - - - -\n\n"
  end
end
