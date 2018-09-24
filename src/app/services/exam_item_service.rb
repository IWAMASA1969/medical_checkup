class ExamItemService
  def add(params)
    exam_item = ExamItem.create(
      item_name: params['item_name'],
      determine_type: 'range'
    )

    range_determine = exam_item.create_range_determine

    standard_values = []
    params['stndard_values'].each do |val|
      standard_values << range_determine.range_determine_tables.create(
        from_value: val['from_value'],
        to_value: val['to_value'],
        determine_result: val['determine_result']
      )
    end

    {
      id: exam_item[:id],
      item_name: exam_item[:item_name],
      stndard_values: standard_values
    }
  end
end
