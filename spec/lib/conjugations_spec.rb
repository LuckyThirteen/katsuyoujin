describe 'conjugations' do
  ['nonpast_indicative', 'past_indicative'].each do |category|
    context category do
      context 'casual' do
        context 'affirmative' do
          CONJUGATIONS.each do |verb, conjugations|
            it "knows the #{category} casual affirmative conjugation of #{verb}" do
              expect(Katsuyoujin.conjugate(verb, 'casual', category, 'affirmative')).to eq conjugations['casual'][category]['affirmative']
            end
          end
        end
        context 'negative' do
          CONJUGATIONS.each do |verb, conjugations|
            it "knows the #{category} casual negative conjugation of #{verb}" do
              expect(Katsuyoujin.conjugate(verb, 'casual', category, 'negative')).to eq conjugations['casual'][category]['negative']
            end
          end
        end
      end

      context 'polite' do
        context 'affirmative' do
          CONJUGATIONS.each do |verb, conjugations|
            it "knows the #{category} polite affirmative conjugation of #{verb}" do
              expect(Katsuyoujin.conjugate(verb, 'polite', category, 'affirmative')).to eq conjugations['polite'][category]['affirmative']
            end
          end
        end
        context 'negative' do
          CONJUGATIONS.each do |verb, conjugations|
            it "knows the #{category} polite negative conjugation of #{verb}" do
              expect(Katsuyoujin.conjugate(verb, 'polite', category, 'negative')).to eq conjugations['polite'][category]['negative']
            end
          end
        end
      end
    end

  end
end
