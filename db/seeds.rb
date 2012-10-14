# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   http://churumelas.r12.railsrumble.com/
Challenge.destroy_all
@start = Challenge.new
@start.title = "@you.can_start? # => return true"
@start.description = %q{Show me the world! Type "start" to face your first challenge!}
@start.code_challenge = %q{if @challenge.valid_answer? params[:console][:code]
  redirect_to :action =>:next_level
else
  flash[:message] = "Come on! Type 'start' and I'll give you some challenges!"
  redirect_to :action => :start
end}
@start.code_help = %q{Imagine you are coding a system like me and want to be redirected to the first level you will need to pass the correct word.}
@start.correct_answer = "start"
@start.tags = "ruby beginner"
@start.image_url = "feliz.png"
@start.background_image_url = "start-background.png"
@start.save

@second = Challenge.new
@second.title = %q{":)".happy? # => return true}
@second.description = %q{It's time to enjoy building awesome regular expressions!!}
@second.code_challenge = %q{
String.class_eval do
  def happy?
    # your code here
  end
end
raise "Your first cog fail!" if not ":)".happy?
raise ":] is happy?" if not ":]".happy?
}
@second.code_help = %q{Imagine you are working on ASCOG Inc. and your next challenge is code an ASC smile recognition trying to idenfiy humam reactions in a natural language. I expect you use String#match? method.}
@second.correct_answer = /:\[\)\]/
@second.tags = "ruby regexp ascog"
@second.image_url = "euforico.png"
@second.background_image_url = "second-background.png"
@second.save


@third = Challenge.new
@third.title = %q{method(:happy?).allow? :noose # => true}
@third.description = %q{It's time to enjoy with advanced noose recognition. Modify the code to accept all the code challenge bellow}
@third.code_challenge = %q{
String.class_eval do
  def happy?
    # your code here
  end
end
[":]",":)",":-)",":-]"].each do |smile|
  if not smile.happy?
    raise "the #{smile} was not recognized"
  end
end
}
@third.code_help = %q{Imagine the ASCOG Inc. is so pragmatic and you need to use the best solution around it. Remember the noose is an alternative. I expect you use String#match? method.}
@third.correct_answer = /:\[\)\]/
@third.tags = "ruby regexp ascog"
@third.image_url = "amigo-esperando.png"
@third.background_image_url = "third-background.png"
@third.save
