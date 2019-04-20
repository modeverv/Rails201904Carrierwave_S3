# coding: utf-8
class SampleMailer < ApplicationMailer
  def send_when_create
    mail to:      "modeverv@gmail.com",
         subject: Time.now.to_s
  end
end
