class ExamItemServiceTest < ActiveSupport::TestCase
  test 'add HbA1c' do
    exam_item_service = ExamItemService.new
    new_exam_item = {
      name: 'HbA1c',
      stndard_values: [
        {from_v: 4.6, to_v: 6.2, result: 'A'},
        {from_v: 6.3, to_v: 7.0, result: 'B'}
      ]
    }
    added_exam_item = exam_item_service.add new_exam_item
    assert_match /[0-9]+/, added_exam_item[:id].to_s
    assert_equal 'HbA1c', added_exam_item[:name]
    assert_equal 2, added_exam_item[:stndard_values].size
  end

  test 'add Neutral fat' do
    exam_item_service = ExamItemService.new
    new_exam_item = {
      name: 'Neutral fat',
      stndard_values: [
        {from_v: 30, to_v: 149, result: 'A'}
      ]
    }
    added_exam_item = exam_item_service.add new_exam_item
    assert_match /[0-9]+/, added_exam_item[:id].to_s
    assert_equal 'Neutral fat', added_exam_item[:name]
    assert_equal 1, added_exam_item[:stndard_values].size
  end
end
