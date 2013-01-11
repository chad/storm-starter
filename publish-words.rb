require 'bunny'
bunny = Bunny.new(logging:true)

bunny.start


# create a fanout exchange
exch = bunny.exchange('khlejavee2')
queue = bunny.queue('flebado2', durable: true)
queue.bind exch

exch.publish("test")
exch.publish("this")
exch.publish("is")
exch.publish("a")
exch.publish("test")
exch.publish("this")
