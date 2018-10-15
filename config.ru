require './config/environment'

use Rack::MethodOverride

use PatientsController
use SessionsController
use UsersController

run ApplicationController