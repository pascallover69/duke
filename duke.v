module main

import vweb

struct App {
    vweb.Context
}

fn main() {
	vweb.run(&App{}, 8080)
}

["/"]
fn (mut app App) world() vweb.Result {
	return app.text('Void chats backend: Duke')
}