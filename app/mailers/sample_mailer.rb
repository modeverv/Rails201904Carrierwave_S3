# coding: utf-8
class SampleMailer < ApplicationMailer
  def send_when_create
    p Dir.pwd
    file = File.read('app/mailers/sample_mailer.rb')
    attachments['test.rb'] = file
    require('active_storage/service/s3_service.rb')
    lb = Blog.last
    if lb && lb.img.attached?
      puts "find!"
      data = lb.img.download
      attachments['test.png'] = data
      puts "atttached!!!"
    end
    mail to:      "modeverv@gmail.com",
         from: "noreply@example.com",
         subject: Time.now.to_s
  end
end
