4*5
"Jimmy"

puts "Jimmy".reverse
puts "Jimmy".length

puts "Jimmy" * 5

#Math.sqrt
#puts 40.reverse

#puts 40.to_s.re­verse

#to_s converts values to strings.
#to_i converts values to integers (numbers.)
#to_a converts values to arrays.

#[]
puts [12, 47, 35]

puts [12, 47, 35].max


ticket = [12, 47, 35]

puts "Normal #{ticket}"

puts "Ordenado #{ticket.sort}"

puts "Ordenado pormanente #{ticket.sort!}"

puts "Ordenado el original #{ticket.sort}"

#This just signals that we intend for Ruby to directly modify the same array that we've built, rather than make a brand new copy that is sorted.

#print 
poem = "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."

poem['toast'] = 'honeydew'

#print poem

#The brackets you just used are very common in Ruby. Remember, you wrote: poem ['toast'] = 'honeydew'. That box that contains the word toast uses a bracket on each side. See them?

#The two supports are like a crosshair used to accurately align on a target. These brackets mean, "I'm looking for ____ somewhere in here." Ready ... point ... data. Here, I was looking for toast specifically to change them for a fruit.

#Let's see if your new experience can help you generate the answer to this question: what happens when we reverse this whole poem? poem.reverse

#poem.reverse
#poem.lines.to_a.reverse

#print poem.lines.to_a.reverse.join


#puts poem.include? "my hand"

#http://ruby-doc.org/core-2.5.0/String.html

puts poem.downcase

books = {}

#You've made an empty hash, also known as: a dictionary. Hashes store related information by giving reusable labels to pieces of our data.

#:splendid → a masterpiece.
#:quite_good → enjoyed, sure, yes.
#:mediocre → equal parts great and terrible.
#:quite_not_good → notably bad.
#:abysmal → steaming wreck.

books["Gravity's Rainbow"] = :splendid
books["Gravity's Rainbow2"] = :quite_good
books["Gravity's Rainbow3"] = :splendid

print books.length

print books["Gravity's Rainbow"]

print books.keys

ratings = Hash.new(0)

books.values.each { |rate| ratings[rate] += 1 }

#(That | in the code is called the pipe character. It's probably located right above the Enter key on your keyboard.)
#This code will turn all your unique values in books...into keys within the new ratingshash. Crazy, right? Then, as it looks at each rating you originally gave in books, it will increase the count value for that rating in ratings
#After you've built your new hash of count values, type ratings again to see the full tally. This new hash will show you a rating followed by the number of times you've given that rating.


print books.values

puts ratings; 

#He aprendido
#Hashes. The little 'dictionary' with the curly braces: {}.
#Symbols. Tiny, efficiently reusable code words with a colon: :splendid.
#Blocks. Chunks of code which can be tacked on to many of Ruby's methods. Here's the code you used to build a scorecard: books.values.each { |rate| ratings[rate] += 1 }.


#One of the amazing new things we've just used is called a block. Basically, a block is a chunk of Ruby code surrounded by curly braces. We'll take a closer look at them later.

print 5.times { print "Odelay!" }


print Dir.entries "/"

#Dir.entries "/" -- Anything listed after a method is considered an 'attachment'.
#print poem -- See, print is just an ordinary method, while the poem is what got attached for printing.
#print "pre", "event", "ual", "ism" -- This bit has several arguments! Ruby makes us use commas to distinguish between them.


print Dir["/*.txt"]

print File.read("comics.txt")

#Metodo para copiar archivo
#FileUtils.cp('/comics.txt', '/Home/comics.txt')

#se verifica la ruta 
Dir["*.txt"]

#colocar nuevos datos al final del archivo

File.open("comics.txt", "a") do |f|

  f << "Cat and Girl: http://catandgirl.com/"
  f << "dfghfgh"
  end

#leer el archivo
    print File.read("comics.txt")

    #tiempo de actualizacion 2018-05-10 22:50:26 UTC
#I wonder, what time was it when you changed your file? We can check that out.

print  File.mtime("comics.txt")
    # solo la hora
#print  File.mtime­("/co­mics.txt")­.hour


#He aprendido
#Files. -- Lots of methods exist for editing files and looking around in directories.
#Arguments. -- Arguments are a list of things sent into a method, separated by commas.
#Block Changes. -- You can use do and end as another way to make a code block.

#Metodos propios
#tambien tienen parametros por defecto (path = "hola")
#Metodos disponibles para las clases Anfitrion.instance_methods solo los de la clase Anfitrion.instance_methods(false)
def load_­comics( path )
  comics = {}
  File.foreach(path) do |line|
    name, url = line.split(': ')
    comics[name] = url.strip
  end
  comics
end

#Ah, hay más cosas como esa. Veamos a qué métodos puede responder nuestro objeto anfitrión:
# a.respond_to?("nombre")
#  false
# a.respond_to?("decir_hola")
#  true
# a.respond_to?("to_s")
#  true


comics = load_­comics('comics.txt')

#he aprendido
#File.foreach -- This method opens a file and hands each line of the file to the block. The line variable inside the do...end block took turns with each line in the file.
#split -- A method for strings which breaks the string up into an array, removing the piece you pass in. An axe is laid on the colon and the line is chopped in half, giving us the data to be stored in url and name for each comic.
#strip -- This quick method removes extra spaces around the url. Just in case.


#cargar libreria libreria

#require 'popup'
#Popup.goto "http://bing.com"


#Making Links and Spinning Webs

=begin
Popup.make {
  h1 "My Links"
  link "Go to Bing", "http://bing.com"
}


Popup.make do
  h1 "Things To Do"
  list do
    p "Try out Ruby"
    p "Ride a tiger"
    p "(down River Euphrates)"
  end
end
=end
#Spread the Comics on the Table

=begin
comics = load_­comics( 'comics.txt' ).
Popup.make do
  h1 "Comics on the Web"
  list do
    comics.each do |name, url|
      link name, url
    end
  end
end
=end

#Ruby on Rails Juegos
#https://www.codeschool.com/courses/rails-for-zombies-redux/
#https://www.codeschool.com/courses/ruby-bits


class Saludo
  def initialize(nombre)
    @nombre = nombre.capitalize
  end

  def saludar
    puts "¡Hola #{@nombre}!"
  end
end

# Crear un nuevo objeto
s = Saludo.new("Mundo")

# Salida "¡Hola Mundo!"
s.saludar



#¿Pero qué pasa si quieres poder ver o modificar el nombre? Ruby provee una forma fácil para permitir acceder a las variables de un objeto.

#irb(main):044:0> class Anfitrion
#irb(main):045:1>   attr_accessor :nombre
#irb(main):046:1> end
#=> nil

#pero afecta a los nuevos objetos que puedas crear. Así que vamos a crear un nuevo objeto y juguemos con su propiedad @nombre

#irb(main):047:0> a = Anfitrion.new("Pedro")
#=> #<Anfitrion:0x3c9b0 @nombre="Pedro">
#irb(main):048:0> a.respond_to?("nombre")
#=> true
#irb(main):049:0> a.respond_to?("nombre=")
#=> true
#irb(main):050:0> a.decir_hola
#Hola Pedro
#=> nil
#irb(main):051:0> a.nombre="Matilde"
#=> "Matilde"
#irb(main):052:0> a
#=> #<Anfitrion:0x3c9b0 @nombre="Matilde">
#irb(main):053:0> a.nombre
#=> "Matilde"
#irb(main):054:0> a.decir_hola
#Hola Matilde
#=> nil

#El uso de attr_accessor determinó que se definan dos nuevos métodos por nosotros, nombre para obtener el valor, y nombre= para modificarlo.


class MegaAnfitrion
  attr_accessor :nombres

  # Crear el objeto
  def initialize(nombres = "Mundo")
    @nombres = nombres
  end

  # Decirle hola a todos
  def decir_hola
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("each")
      # @nombres es una lista de algún tipo,
      # ¡así que podemos iterar!
      @nombres.each do |nombre|
        puts "Hola #{nombre}"
      end
    else
      puts "Hola #{@nombres}"
    end
  end

  # Decirle adiós a todos
  def decir_adios
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("join")
      # Juntar los elementos de la lista
      # usando la coma como separador
      puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
    else
      puts "Adiós #{@nombres}. Vuelve pronto."
    end
  end

end


if __FILE__ == $0
  ma = MegaAnfitrion.new
  ma.decir_hola
  ma.decir_adios

  # Cambiar el nombre a "Diego"
  ma.nombres = "Diego"
  ma.decir_hola
  ma.decir_adios

  # Cambiar el nombre a un vector de nombres
  ma.nombres = ["Alberto", "Beatriz", "Carlos",
    "David", "Ernesto"]
  ma.decir_hola
  ma.decir_adios

  # Cambiarlo a nil
  ma.nombres = nil
  ma.decir_hola
  ma.decir_adios
end



def decir_hola
  if @nombres.nil?
    puts "..."
  elsif @nombres.respond_to?("each")
    # @nombres es una lista de algún tipo,
    # ¡así que podemos iterar!
    @nombres.each do |nombre|
      puts "Hola #{nombre}"
    end
  else
    puts "Hola #{@nombres}"
  end
end


#@nombres.each do |nombre|
#  puts "Hola #{nombre}"
#end

#Muchos otros lenguajes de programación manejan la iteración de una lista usando la clásica sintaxis for, que en C se ve así:

#for (i=0; i<cantidad_de_elementos; i++)
#{
#  hacer_algo_con(elementos[i]);
#}

#Esto funciona, pero no es muy elegante. Necesitas una variable descartable como i, averiguar la cantidad de elementos de la lista, y explicar cómo recorrerla. La costumbre Ruby (The Ruby Way) es mucho más elegante, todos los detalles de infraestructura se ocultan en el método each, todo lo que necesitas hacer es decirle qué hacer con cada elemento. Internamente, el método each llamará yield "Alberto", después yield "Beatriz", después yield "Carlos", y así sucesivamente.

#El método each acepta un bloque de código y lo ejecuta por cada elemento de la lista, y el código entre do y end es el bloque en sí mismo. Un bloque es como una función anónima o lambda. La variable entre los pipes (|) es el parámetro para este bloque.



#Los bloques, una de las funcionalidades más potentes de Ruby

#El poder real de los bloques se disfruta al trabajar con cosas más complicadas que las listas. Más allá de manejar los detalles de infraestructura dentro del método, también puedes manejar la inicialización, la finalización, y los errores—todos ocultos y simplificados frente a las preocupaciones del desarrollador.

# Decirle adiós a todos
#def decir_adios
#  if @nombres.nil?
#    puts "..."
#  elsif @nombres.respond_to?("join")
    # Juntar los elementos de la lista
    # usando la coma como separador
#    puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
#  else
#    puts "Adiós #{@nombres}. Vuelve pronto."
#  end
#end
#El método decir_adios no usa each, en vez de eso se fija si @nombres responde al método join, y si es así, lo usa. Si no es así, simplemente imprime la variable como un string. Esta práctica de no preocuparse sobre el tipo de objeto de una variable, y simplemente depender de los métodos que esta soporta, es conocida como “Duck Typing”. El beneficio es que no limita innecesariamente los tipos de variables que son soportados. Si alguien inventa un nuevo tipo de lista, siempre y cuando implemente el método join con la misma semántica que otras listas, todo funcionará como fue planeado.

#Arrancando el Script
#Así que eso es la clase MegaAnfitrion, el resto del archivo sólo llama a los métodos de la clase. Hy un último truco para tener en cuenta, y es la linea:

#if __FILE__ == $0
#__FILE__ es la variable mágica que contiene el nombre del archivo que se está ejecutando en ese momento. $0 es el nombre del archivo usado para iniciar el programa. Esta verificación dice “si este es el archivo principal…”. Esto permite que un archivo sea utilizado como una biblioteca, y no ejecutar código en ese contexto. Pero si el archivo está siendo usado como un ejecutable, entonces ejecuta ese código.



    your_name = "Angel"
puts "Hello #{your_name}"
5.times { print "Nos *encanta* Ruby -- ¡es fuera de serie!" }

class Numeric
    def sumar(x)
      self.+(x)
    end
  end
  
  y = 5.sumar 6
  # ahora y vale 11
  puts " valor #{y}"

  motores_de_busqueda =
  %w[Google Yahoo MSN].map do |motor|
    "http://www." + motor.downcase + ".com"
  end

  puts " Motor #{motores_de_busqueda}"

  class MiArray
    include Enumerable
  end

  
  require 'pg'
  require 'sequel'

  DB = Sequel.connect('postgres://ruby:gelo@localhost/pruebaruby')

  personas = DB[:persona]

  puts "There are #{personas.count} people in the database"
  #personas.insert( :"primer nombre" => "consola " + personas.count.to_s)
  puts "There are #{personas.count} people in the database"

  personas.each do |persona|
    puts persona[:"primer nombre"]
    end

  DB.fetch("SELECT * FROM persona") do |row|
    puts row[:"primer nombre"]
    end

  persona = personas.where(:"primer nombre" => "consola " + (personas.count - 1).to_s).first
  
  #persona.edad = 50
  #persona.save

  require 'PostgresDirect'
    
   
  #Ruby no necesita declaraciones de variables. Se utilizan convenciones simples para nombrar y determinar el alcance de las mismas.

#var puede ser una variable local.
#@var es una variable de instancia.
#$var es una variable global.

print (1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print (1...10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9]


require 'open-uri'
page = "podcasts"
file_name = "#{page}.html"
web_page = open("http://pragprog.com/#{page}")
output = File.open(file_name, "w")
begin
  while line = web_page.gets
    output.puts line
  end
output.close
rescue Exception
  STDERR.puts "Failed to download #{page}: #{$!}"
  output.close
  File.delete(file_name)
  raise
end


counts = Hash.new(0)
File.foreach("testfile.txt") do |line|
line.scan(/\w+/) do |word|
word = word.downcase
counts[word] += 1
end
end
counts.keys.sort.each {|k| print "#{k}:#{counts[k]} "}


words = Fiber.new do
  File.foreach("testfile.txt") do |line|
    line.scan(/\w+/) do |word|
  Fiber.yield word.downcase
    end
  end
  nil
  end

  counts = Hash.new(0)
while word = words.resume
counts[word] += 1
end
counts.keys.sort.each {|k| print "#{k}:#{counts[k]} "}

twos = Fiber.new do
  num = 2
  loop do
  Fiber.yield(num) unless num % 3 == 0
  num += 2
  end
  end
  10.times { print twos.resume, " " }


  require 'net/http'
pages = %w( www.rubycentral.org slashdot.org www.google.com )
threads = pages.map do |page_to_fetch|
Thread.new(page_to_fetch) do |url|
http = Net::HTTP.new(url, 80)
print "Fetching: #{url}\n"
resp = http.get('/')
print "Got #{url}: #{resp.message}\n"
end
end
threads.each {|thr| thr.join }

count = 0
threads = 10.times.map do |i|
Thread.new do
sleep(rand(0.1))
Thread.current[:mycount] = count
count += 1
end
end
threads.each {|t| t.join; print t[:mycount], ", " }
puts "count = #{count}"
produces:
7, 0, 6, 8, 4, 5, 1, 9, 2, 3, count = 10

animal = "cat"
def animal.speak
puts "The #{self} says miaow"
end
animal.speak
puts animal.upcase

class Test
  @var = 99
  def self.var
  @var
  end
  def self.var=(value)
  @var = value
  end
  end
  puts "Original value = #{Test.var}"
  Test.var = "cat"
  puts "New value = #{Test.var}"

  obj = Object.new
  def  obj.my_method
   puts "this is my method"
  end

  obj.my_method
  Object_2 = Object.new
  Object_2.my_method


  class Task
    STATUS = [:new, :in_progress, :cancelled, :resolved, :feedback]

    STATUS.each do |status|
      define_method("#{status}?") do
        @status == status
      end
      
      define_method("#{status}!") do
        @status = status
      end
    end
  end

  task = Task.new
  task.new!
  task.new?
  task.foo

  [ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
  5.times { print "*" }
  3.upto(6) {|i| print i }
  ('a'..'e').each {|char| print char }
  puts
  