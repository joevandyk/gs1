module GS1
  class ProductionDate < Record
    include Extensions::DateMonthBased

    AI = AI::PROD_DATE
  end
end
