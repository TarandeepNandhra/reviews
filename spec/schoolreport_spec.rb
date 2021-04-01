require 'schoolreport'

describe SchoolReport do
  describe 'report' do
    it 'returns the number of green grades' do
      expect(SchoolReport.report("Green")).to eq("Green: 1")
    end
    it 'returns two green grades' do
      expect(SchoolReport.report("Green, Green")).to eq("Green: 2")
    end
    it 'returns a report for green and red grades' do
      expect(SchoolReport.report("Green, Red")).to eq("Green: 1\nRed: 1")
    end
    it 'can take in grades which are capitalised or not' do
      expect(SchoolReport.report("green, red")).to eq("Green: 1\nRed: 1")
    end
    it 'returns a report for green, amber and red grades' do
      expect(SchoolReport.report("Green, Green, Red, Amber, Red")).to eq("Green: 2\nAmber: 1\nRed: 2")
    end
    it 'returns no results given, if input is empty' do
      expect(SchoolReport.report("")).to eq("No results given")
    end
  end
end