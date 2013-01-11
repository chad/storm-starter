require 'bunny'
bunny = Bunny.new(logging:true)

bunny.start


# create a fanout exchange
exch = bunny.exchange('khlejavee2')
queue = bunny.queue('flebado3', durable: true)
queue.bind exch

exch.publish("test", content_type: 'text/plain')
exch.publish("this", content_type: 'text/plain')
exch.publish("is", content_type: 'text/plain')
exch.publish("a", content_type: 'text/plain')
exch.publish("test", content_type: 'text/plain')
exch.publish("this", content_type: 'text/plain')
