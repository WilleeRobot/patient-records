require './config/environment'

use Rack::MethodOverride

use HistoriesController
use PatientsController
use SessionsController
use UsersController

run ApplicationController