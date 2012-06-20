packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libsc60
  /
when "precise"
  packages |= %w/
    libisc83
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
