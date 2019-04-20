class My2Job < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "my2job kicked #{Time.now.to_s}"
    # Do something later
    SampleMailer.send_when_create.deliver
  end
end
