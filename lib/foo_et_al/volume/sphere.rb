module FooEtAl
    class Sphere
        def self.volume(radius)
            if radius <= 0
              return "Enter positive number."
            else
              return (4.0 / 3.0) * Math::PI * (radius ** 3)
            end
          end
        end
    end