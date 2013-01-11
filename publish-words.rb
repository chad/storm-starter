require 'bunny'
bunny = Bunny.new(logging:true)

bunny.start
@words = IO.readlines("/usr/share/dict/words")

# create a fanout exchange
exch = bunny.exchange('khlejavee2')
queue = bunny.queue('flebado3', durable: true)
queue.bind exch

def random_word
  @words[rand(@words.size)]
end

10.times do
  exch.publish(random_word, content_type: 'text/plain')
end
