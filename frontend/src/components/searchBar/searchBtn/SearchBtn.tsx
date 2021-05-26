import { PlaceSection } from '../../../style/BarStyle'
import Button from '@material-ui/core/Button'
import { createStyles, makeStyles, Theme } from '@material-ui/core/styles'
import SearchIcon from '@material-ui/icons/Search'
const useStyles = makeStyles((theme: Theme) =>
	createStyles({
		button: {
			margin: theme.spacing(1),
			borderRadius: 30,
		},
	})
)

const SearchBtn = () => {
	const classes = useStyles()
	return (
		<PlaceSection>
			<Button
				variant='contained'
				color='secondary'
				className={classes.button}
				startIcon={<SearchIcon />}
			>
				검색
			</Button>
		</PlaceSection>
	)
}

export default SearchBtn
