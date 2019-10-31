module GS1
  class WeightPounds < Record
    AI = AI::WEIGHT_POUNDS

    define :length, barcode: 6

    def to_f
      to_s.to_f / 100
    end
  end
end
