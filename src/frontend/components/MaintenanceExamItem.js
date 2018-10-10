import React from 'react';
import PropTypes from 'prop-types';
import MCAppBar from './commons/MCAppBar';
import InputName from './maintenance_exam_item/InputName';
import ButtonAddStdValue from './maintenance_exam_item/ButtonAddStdValue';
import TableStdValues from './maintenance_exam_item/TableStdValues';

class MaintenanceExamItem extends React.Component {
  render () {
    return (
      <div>
        <MCAppBar title={"Exam Item"} />
        <InputName />
        <ButtonAddStdValue />
        <TableStdValues />
      </div>
    );
  }
}

export default MaintenanceExamItem
