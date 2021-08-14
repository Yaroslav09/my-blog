class Profile::BaseController < ApplicationController
  before_action :authenticate_user!
end