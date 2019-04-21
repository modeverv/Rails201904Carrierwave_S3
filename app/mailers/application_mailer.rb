class ApplicationMailer < ActionMailer::Base
# default charset: 'ISO-2022-JP'
  default from: 'system',
          replay_to: "test@example.com"
 
  layout 'mailer'
end
