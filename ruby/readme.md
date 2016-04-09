Run tests
*********
> bundle exec rspec
> [optional] bundle exec guard

Alternatives:
it 'should score 0' do
  expect(game.score).to eq 0
end

its(:score){ is_expected.to eq 0 }

it { is_expected.to score 0 }
