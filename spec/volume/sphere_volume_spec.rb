require_relative '../../lib/foo_et_al/volume/sphere'
describe FooEtAl::Sphere do
    describe '.volume' do
    it 'calculates the volume of a sphere with radius 10' do
        expect(FooEtAl::Sphere.volume(10)).to be_within(0.0001).of(4188.790204786391)
    end
    it 'returns a 0 for a radius 0' do
        expect(FooEtAl::Sphere.volume(0)).to eq(0)
      end
    
      it 'returns an error message for negative radius' do
        expect(FooEtAl::Sphere.volume(-5)).to eq("Enter positive number.")
    end
  end
end