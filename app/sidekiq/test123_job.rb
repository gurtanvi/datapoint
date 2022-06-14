class Test123Job < DtpMinute
  include Sidekiq::Job

  def perform()
    DtpMinute.new.save
  end
end
