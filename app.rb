require_relative "controller"
require_relative "router"
require_relative "moviebook"

moviebook = Moviebook.new
controller = Controller.new(moviebook)
router = Router.new(controller)

router.run
