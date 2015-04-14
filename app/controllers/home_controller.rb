class HomeController < ApplicationController
  def index
  end

  def download
    file_name = 'minotake_portfolio.pdf'
    filepath = Rails.root.join('public', file_name)
    stat = File::stat(filepath)
    send_file(filepath, file_name: file_name, length: stat.size)
  end
end
