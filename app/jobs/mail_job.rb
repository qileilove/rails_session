class MailJob < ApplicationJob

  queue_as :send_email

  rescue_from(Exception) do
    puts Exception
    retry_job wait: 5.minutes, queue: :low_priority
  end

  puts "job start "

  def perform(plan)
    # Do something later
     UserMailer.welcome_email(plan).deliver
    puts "send email successful"
  end
  puts "job end "
end
