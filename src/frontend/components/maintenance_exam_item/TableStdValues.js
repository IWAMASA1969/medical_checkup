import React from 'react';
import PropTypes from 'prop-types';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';

class TableStdValues extends React.Component {
//    rows = [
//      { 'id':1, 'from':0, 'to':149, 'value':'A' },
//      { 'id':2, 'from':150, 'to':400, 'value':'B' },
//    ];
  render () {
    return (
      <div>
        <Table>
        </Table>
      </div>
//        <TableHead>
//          <TableRow>
//            <TableCell numeric>from</TableCell>
//            <TableCell numeric>to</TableCell>
//            <TableCell>value</TableCell>
//          </TableRow>
//        </TableHead>
//        <TableBody>
//          {rows.map(row => {
//            return (
//              <TableRow key={row.id}>
//                <TableCell numeric>{row.calories}</TableCell>
//                <TableCell numeric>{row.fat}</TableCell>
//                <TableCell>{row.value}</TableCell>
//              </TableRow>
//            );
//          })}
//        </TableBody>
    );
  }
}

export default TableStdValues
