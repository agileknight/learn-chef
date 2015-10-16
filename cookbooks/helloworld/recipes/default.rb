file "#{ENV['HOME']}/x.txt" do
  content 'HELLO WORLD'
end

file "#{ENV['HOME']}/x.txt" do
  action :delete
end

file "#{ENV['HOME']}/x.txt" do
  content 'HELLO WORLD new'
end
