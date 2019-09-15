from werkzeug.serving import run_simple

import falcon

app = falcon.API()

if __name__ == '__main__':
    run_simple('0.0.0.0', 8000, app, use_reloader=True, use_debugger=True)
