require 'action_mailer'
require 'English'

ActionMailer::Base.prepend_view_path File.expand_path('./app/views/mailers')
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'hoshino@machiiro.jp',
  password: 'rtrsphloknsquscs',
  authentication: 'plain',
  enable_starttls_auto: true
}

class SampleMailer < ActionMailer::Base
  def template_example(inquiry)
    @inquiry = inquiry
    mail(
      to: 'hoshino@machiiro.jp',
      from: 'test@example.net',
      subject: 'test', &:text
    )
  end
end
