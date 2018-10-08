import React from 'react';
import PropTypes from 'prop-types';
import Input from '@material-ui/core/Input';
import InputLabel from '@material-ui/core/InputLabel';

class InputName extends React.Component {
  render () {
    return (
      <div>
        <InputLabel>
          name
        </InputLabel>
        <Input />
      </div>
    );
  }
}

export default InputName
