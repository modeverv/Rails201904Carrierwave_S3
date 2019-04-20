# coding: utf-8
class SampleMailer < ApplicationMailer
  def send_when_create
    #p Dir.pwd
    file = File.read('app/mailers/sample_mailer.rb')
    #p file
    attachments['test.rb'] = file
    mail to:      "modeverv@gmail.com",
         subject: Time.now.to_s
  end
end
