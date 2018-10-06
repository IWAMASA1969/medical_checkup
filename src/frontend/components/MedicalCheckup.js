import React from "react";
import ReactDom from "react-dom";
import PropTypes from "prop-types";
import Button from "@material-ui/core/Button";
class MedicalCheckup extends React.Component {
  render () {
    return (
      <Button variant="contained" color="primary">
        Hello World
      </Button>
    );
  }
}

MedicalCheckup.propTypes = {
  greeting: PropTypes.string
};
export default MedicalCheckup
