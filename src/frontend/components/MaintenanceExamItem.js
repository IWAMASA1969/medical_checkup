import React from 'react';
import PropTypes from 'prop-types';
import MCAppBar from './commons/MCAppBar';
import InputName from './maintenance_exam_item/InputName';
import ButtonAddStdValue from './maintenance_exam_item/ButtonAddStdValue';

class MaintenanceExamItem extends React.Component {
  render () {
    return (
      <div>
        <MCAppBar title={"Exam Item"} />
        <InputName />
        <ButtonAddStdValue />
      </div>
    );
  }
}

export default MaintenanceExamItem
