import styled from "styled-components";
import { makeStyles } from '@material-ui/core';

export const DivisionTitle = styled.div`
  font-weight: 700;
`;
export const DivisionContent = styled.div`
  color:#4F4F4F;
`;

export const ButtonStyle = makeStyles({
  slider: {
    position: 'absolute',
    top: '-7px',
    background: '#fff',
    borderRadius: '50%',
    zIndex: 1
  },
  search: {
    height: '4rem',
    marginRight: '1rem',
    fontWeight: 700,
    fontSize: '18px'
  },
  searchMapButton: {
    borderRadius: '50%',
    padding: '.5rem',
    width: '2.5rem',
    height: '2.5rem',
    minWidth: '1.5rem'
  }
})

export const BASE_ZOOM_LEVEL = 0.06257057189941406;
export const SEOUL_LOCATION = {
  x: 37.50113036551878,
  y: 127.05006341949776
}
