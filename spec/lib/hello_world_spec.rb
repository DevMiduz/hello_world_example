# frozen_string_literal: true

require './lib/hello_world'

describe HelloWorld do
	before :all do 
		@hello_world = HelloWorld.new
	end

	describe "#greet" do
		it "prints a greeting to the name provided" do
			expect do
				@hello_world.greet("Billy Johnson")
			end.to output("Hello Billy Johnson!\n").to_stdout
		end
	end
end