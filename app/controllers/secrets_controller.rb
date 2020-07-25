class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index

  end

  def show

  end

  def secret
    # redirect_to secret_path
  end

  def require_login
    return head(:temporary_redirect, location: login_path) unless session.include? :name
  end
end