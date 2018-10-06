import React from 'react'
import PropTypes from 'prop-types'
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
class MaintenanceExamItem extends React.Component {
  render () {
    return (
      <div>
        <AppBar position="static" color="default">
          <Toolbar>
            <Typography variant="title" color="inherit">
              Exam Item
            </Typography>
          </Toolbar>
        </AppBar>
      </div>
    );
  }
}

export default MaintenanceExamItem
