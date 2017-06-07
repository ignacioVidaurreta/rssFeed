<total>
{
	for $rssdocument in collection('dir.xml')/rss
	return 
		<rss>
			<channel>
				{$rssdocument/channel/description}
				{$rssdocument/channel/link}
			</channel>
			{
				for $item in $rssdocument/channel/item
				return 
					{$item/title}
					{$item/link}
					
			}
		</rss>
		

}
</total>
