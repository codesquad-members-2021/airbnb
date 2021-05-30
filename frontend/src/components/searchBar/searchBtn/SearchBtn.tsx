import { withRouter } from 'react-router-dom'
import styled from 'styled-components'
import { createStyles, makeStyles, Theme } from '@material-ui/core/styles'
import SearchIcon from '@material-ui/icons/Search'
import Button from '@material-ui/core/Button'
import { PlaceSection } from '../../../style/BarStyle'
import { RecoilValueGroup } from '../../../customHook/atoms'
import useAxios from '../../../customHook/useAxios'
import { getHouseData } from './../../../customHook/axiosAPI'

const useStyles = makeStyles((theme: Theme) =>
  createStyles({
    button: {
      margin: theme.spacing(1),
      borderRadius: 30,
    },
  })
)

function SearchBtn({ history }: any) {
  const classes = useStyles()

  return (
    <PlaceSection>
      <Button
        variant='contained'
        color='secondary'
        className={(classes.button, 'routerBtn')}
        startIcon={<SearchIcon />}
        onClick={() => history.push('/searchResult')}
      >
        <CustomSpan>검색</CustomSpan>
      </Button>
    </PlaceSection>
  )
}

const CustomSpan = styled.span`
  color: ${({ theme }) => theme.color.white};
  font-weight: ${({ theme }) => theme.fontWeight.W2};
  text-decoration: none;
`
export default withRouter(SearchBtn)
