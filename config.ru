require './config/environment'

use PatientsController
use SessionsController
use UsersController
use Rack::MethodOverride

run ApplicationController