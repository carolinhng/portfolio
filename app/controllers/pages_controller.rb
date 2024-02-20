class PagesController < ApplicationController
  def download_pdf
    send_file "#{Rails.root}/public/cv.pdf", type: "application/pdf", x_sendfile: true
  end

  def home
    @experiences = Experience.all
  end

end
