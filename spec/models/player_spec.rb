require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) { create(:player) }
  let(:match) { create(:match) }
  let(:team) { create(:team) }
  let(:standard) { 'lucky_pass' }

  describe '#fulfill_standard?' do
    context 'when the player has fulfilled the standard in the match' do
      before { create(:match_participation, team: team, player: player, match: match, lucky_pass: true) }

      it 'returns true' do
        expect(player.fulfill_standard?(match, standard)).to be true
      end
    end

    context 'when the player has not fulfilled the standard in the match' do
      before { create(:match_participation, team: team, player: player, match: match, lucky_pass: false) }

      it 'returns false' do
        expect(player.fulfill_standard?(match, standard)).to be false
      end
    end
  end

  describe '#fulfill_standard_5_matches?' do
    context 'when the player has fulfilled the standard in at least one of the last 5 matches' do
      before do
        create_list(:match_participation, 5, team: team, player: player, match: match, lucky_pass: false)
        create(:match_participation, team: team, player: player, match: match, lucky_pass: true)
      end

      it 'returns true' do
        expect(player.fulfill_standard_5_matches?(standard)).to be true
      end
    end

    context 'when the player has not fulfilled the standard in any of the last 5 matches' do
      before do
        create_list(:match_participation, 5, team: team, player: player, match: match, lucky_pass: false)
      end

      it 'returns false' do
        expect(player.fulfill_standard_5_matches?(standard)).to be false
      end
    end
  end

  describe '.top_5_by_standard' do
    let!(:players) do
      create_list(:player, 10).each do |player|
        create(:match_participation, player: player, team: team, lucky_pass: rand(6))
      end
    end

    it 'returns top 5 players based on the specified standard' do
      result = Player.top_5_by_standard('lucky_pass', team)
      expect(result.count.keys.size).to eq(5)
    end

    it 'returns top 5 players based on the specified standard across all teams' do
      result = Player.top_5_by_standard('lucky_pass')
      expect(result.count.keys.size).to eq(5)
    end
  end
end
