import React from "react"
import PropTypes from "prop-types"
class MedicalCheckup extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

MedicalCheckup.propTypes = {
  greeting: PropTypes.string
};
export default MedicalCheckup
