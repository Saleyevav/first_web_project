def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    body = [bytes(i+'\n','ascii') for i in env['QUERY_STRING'].split('&')]
    #body = bytes(['kakaha\n','kozula'])
    return body
