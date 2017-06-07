<total>
{
	for $rssdocument in collection('dir.xml')/rss
	return 
		<rss>
			<channel>
				<description>{$rssdocument/channel/title/text()}</description>
				{$rssdocument/channel/link}
			</channel>
			{
				for $item in $rssdocument/channel/item
				return
					<item>
						{$item/title}
						{$item/link}
					</item>
					
			}
		</rss>
		

}
</total>
