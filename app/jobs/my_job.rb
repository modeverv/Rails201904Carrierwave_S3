class MyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "MyJob kicked: #{Time.now.to_s}"
    # SampleMailer.send_when_create.deliver
    My2Job.perform_later
  end
end
