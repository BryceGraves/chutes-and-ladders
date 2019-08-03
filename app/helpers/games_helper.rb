module GamesHelper

  SpaceType = {
    empty: 'empty',
    ladder: 'ladder',
    chute: 'chute'
  }.freeze

  SPACES_DATA = [
    { space_type: SpaceType[:empty], destination: nil }, # 1
    { space_type: SpaceType[:ladder], destination: 38 }, # 2
    { space_type: SpaceType[:empty], destination: nil }, # 3
    { space_type: SpaceType[:empty], destination: nil }, # 4
    { space_type: SpaceType[:empty], destination: nil }, # 5
    { space_type: SpaceType[:empty], destination: nil }, # 6
    { space_type: SpaceType[:ladder], destination: 14 }, # 7
    { space_type: SpaceType[:ladder], destination: 31 }, # 8
    { space_type: SpaceType[:empty], destination: nil }, # 9
    { space_type: SpaceType[:empty], destination: nil }, # 10
    { space_type: SpaceType[:empty], destination: nil }, # 11
    { space_type: SpaceType[:empty], destination: nil }, # 12
    { space_type: SpaceType[:empty], destination: nil }, # 13
    { space_type: SpaceType[:empty], destination: nil }, # 14
    { space_type: SpaceType[:ladder], destination: 26 }, # 15
    { space_type: SpaceType[:chute], destination: 6 }, # 16
    { space_type: SpaceType[:empty], destination: nil }, # 17
    { space_type: SpaceType[:empty], destination: nil }, # 18
    { space_type: SpaceType[:empty], destination: nil }, # 19
    { space_type: SpaceType[:empty], destination: nil }, # 20
    { space_type: SpaceType[:ladder], destination: 42 }, # 21
    { space_type: SpaceType[:empty], destination: nil }, # 22
    { space_type: SpaceType[:empty], destination: nil }, # 23
    { space_type: SpaceType[:empty], destination: nil }, # 24
    { space_type: SpaceType[:empty], destination: nil }, # 25
    { space_type: SpaceType[:empty], destination: nil }, # 26
    { space_type: SpaceType[:empty], destination: nil }, # 27
    { space_type: SpaceType[:ladder], destination: 84 }, # 28
    { space_type: SpaceType[:empty], destination: nil }, # 29
    { space_type: SpaceType[:empty], destination: nil }, # 30
    { space_type: SpaceType[:empty], destination: nil }, # 31
    { space_type: SpaceType[:empty], destination: nil }, # 32
    { space_type: SpaceType[:empty], destination: nil }, # 33
    { space_type: SpaceType[:empty], destination: nil }, # 34
    { space_type: SpaceType[:empty], destination: nil }, # 35
    { space_type: SpaceType[:ladder], destination: 44 }, # 36
    { space_type: SpaceType[:empty], destination: nil }, # 37
    { space_type: SpaceType[:empty], destination: nil }, # 38
    { space_type: SpaceType[:empty], destination: nil }, # 39
    { space_type: SpaceType[:empty], destination: nil }, # 40
    { space_type: SpaceType[:empty], destination: nil }, # 41
    { space_type: SpaceType[:empty], destination: nil }, # 42
    { space_type: SpaceType[:empty], destination: nil }, # 43
    { space_type: SpaceType[:empty], destination: nil }, # 44
    { space_type: SpaceType[:empty], destination: nil }, # 45
    { space_type: SpaceType[:chute], destination: 25 }, # 46
    { space_type: SpaceType[:empty], destination: nil }, # 47
    { space_type: SpaceType[:empty], destination: nil }, # 48
    { space_type: SpaceType[:chute], destination: 11 }, # 49
    { space_type: SpaceType[:empty], destination: nil }, # 50
    { space_type: SpaceType[:ladder], destination: 67 }, # 51
    { space_type: SpaceType[:empty], destination: nil }, # 52
    { space_type: SpaceType[:empty], destination: nil }, # 53
    { space_type: SpaceType[:empty], destination: nil }, # 54
    { space_type: SpaceType[:empty], destination: nil }, # 55
    { space_type: SpaceType[:empty], destination: nil }, # 56
    { space_type: SpaceType[:empty], destination: nil }, # 57
    { space_type: SpaceType[:empty], destination: nil }, # 58
    { space_type: SpaceType[:empty], destination: nil }, # 59
    { space_type: SpaceType[:empty], destination: nil }, # 60
    { space_type: SpaceType[:empty], destination: nil }, # 61
    { space_type: SpaceType[:chute], destination: 19 }, # 62
    { space_type: SpaceType[:empty], destination: nil }, # 63
    { space_type: SpaceType[:chute], destination: 60 }, # 64
    { space_type: SpaceType[:empty], destination: nil }, # 65
    { space_type: SpaceType[:empty], destination: nil }, # 66
    { space_type: SpaceType[:empty], destination: nil }, # 67
    { space_type: SpaceType[:empty], destination: nil }, # 68
    { space_type: SpaceType[:empty], destination: nil }, # 69
    { space_type: SpaceType[:empty], destination: nil }, # 70
    { space_type: SpaceType[:empty], destination: nil }, # 71
    { space_type: SpaceType[:empty], destination: nil }, # 72
    { space_type: SpaceType[:empty], destination: nil }, # 73
    { space_type: SpaceType[:chute], destination: 53 }, # 74
    { space_type: SpaceType[:empty], destination: nil }, # 75
    { space_type: SpaceType[:empty], destination: nil }, # 76
    { space_type: SpaceType[:empty], destination: nil }, # 77
    { space_type: SpaceType[:ladder], destination: 98 }, # 78
    { space_type: SpaceType[:empty], destination: nil }, # 79
    { space_type: SpaceType[:empty], destination: nil }, # 80
    { space_type: SpaceType[:empty], destination: nil }, # 81
    { space_type: SpaceType[:empty], destination: nil }, # 82
    { space_type: SpaceType[:empty], destination: nil }, # 83
    { space_type: SpaceType[:empty], destination: nil }, # 84
    { space_type: SpaceType[:empty], destination: nil }, # 85
    { space_type: SpaceType[:empty], destination: nil }, # 86
    { space_type: SpaceType[:ladder], destination: 94 }, # 87
    { space_type: SpaceType[:empty], destination: nil }, # 88
    { space_type: SpaceType[:chute], destination: 68 }, # 89
    { space_type: SpaceType[:empty], destination: nil }, # 90
    { space_type: SpaceType[:empty], destination: nil }, # 91
    { space_type: SpaceType[:chute], destination: 88 }, # 92
    { space_type: SpaceType[:empty], destination: nil }, # 93
    { space_type: SpaceType[:empty], destination: nil }, # 94
    { space_type: SpaceType[:chute], destination: 75 }, # 95
    { space_type: SpaceType[:empty], destination: nil }, # 96
    { space_type: SpaceType[:empty], destination: nil }, # 97
    { space_type: SpaceType[:empty], destination: nil }, # 98
    { space_type: SpaceType[:chute], destination: 80 }, # 99
    { space_type: SpaceType[:empty], destination: nil } # 100
  ].freeze

  def self.generate_spaces
    SPACES_DATA.map { |config| Space.new(config) }
  end
end
