# config.ru
require './config/environment'

use UsersController
use BlogsController
run ApplicationController

$stdout.sync = true
