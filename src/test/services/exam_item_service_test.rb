class ExamItemServiceTest < ActiveSupport::TestCase
  test 'add HbA1c' do
    exam_item_service = ExamItemService.new
    new_exam_item = {
      'item_name' => 'HbA1c',
      'stndard_values' => [
        { 'from_value' => 4.6, 'to_value' => 6.2, 'determine_result' => 'A' },
        { 'from_value' => 6.3, 'to_value' => 7.0, 'determine_result' => 'B' }
      ]
    }
    added_exam_item = exam_item_service.add new_exam_item
    assert_match /[0-9]+/, added_exam_item[:id].to_s
    assert_equal 'HbA1c', added_exam_item[:item_name]
    assert_equal 2, added_exam_item[:stndard_values].size
  end

  test 'add Neutral fat' do
    exam_item_service = ExamItemService.new
    new_exam_item = {
      'item_name' => 'Neutral fat',
      'stndard_values' => [
        { 'from_value' => 30, 'to_value' => 149, 'determine_result' => 'A' }
      ]
    }
    added_exam_item = exam_item_service.add new_exam_item
    assert_match /[0-9]+/, added_exam_item[:id].to_s
    assert_equal 'Neutral fat', added_exam_item[:item_name]
    assert_equal 1, added_exam_item[:stndard_values].size
  end
end
