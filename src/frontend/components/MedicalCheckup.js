import React from "react";
import ReactDom from "react-dom";
import PropTypes from "prop-types";
import Button from "@material-ui/core/Button";
class MedicalCheckup extends React.Component {
  handleClick() {
    window.location.href = '/exam/item_views/new';
  }

  render () {
    return (
      <Button
        onClick={() => this.handleClick()}
        variant="contained" color="primary">
        Hello World
      </Button>
    );
  }
}

MedicalCheckup.propTypes = {
  greeting: PropTypes.string
};
export default MedicalCheckup
