class ApplicationMailer < ActionMailer::Base
  default from: 'system',
          replay_to: "test@example.com"
  layout 'mailer'
end
