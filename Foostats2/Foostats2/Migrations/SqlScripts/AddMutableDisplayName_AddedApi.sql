﻿ALTER TABLE [dbo].[Players] ADD [Discriminator] [nvarchar](128) NOT NULL DEFAULT ''
ALTER TABLE [dbo].[Players] ADD [Trueskill_Id] [int]
ALTER TABLE [dbo].[Players] ADD [WinLoss_Id] [int]
ALTER TABLE [dbo].[Players] ADD CONSTRAINT [FK_dbo.Players_dbo.Trueskills_Trueskill_Id] FOREIGN KEY ([Trueskill_Id]) REFERENCES [dbo].[Trueskills] ([Id])
ALTER TABLE [dbo].[Players] ADD CONSTRAINT [FK_dbo.Players_dbo.WinLosses_WinLoss_Id] FOREIGN KEY ([WinLoss_Id]) REFERENCES [dbo].[WinLosses] ([Id])
CREATE INDEX [IX_Trueskill_Id] ON [dbo].[Players]([Trueskill_Id])
CREATE INDEX [IX_WinLoss_Id] ON [dbo].[Players]([WinLoss_Id])
INSERT INTO [__MigrationHistory] ([MigrationId], [Model], [ProductVersion]) VALUES ('201311150942241_AddedApi', 0x1F8B0800000000000400ED5D4B6FE43612BE07C87F68E8940448B7ADE4303B682798D8E385B1F1D8703BD9A341B7D86D227A7424B663FFB61CF293F62F2CA907C5A7484AEA87077319B845B258C5FA582C154B35FFFBFB9FF9CF2F493C79867981B2F42C389D9E0413982EB308A5EBB3608B57DFBF0B7EFEE9EBAFE61FA3E465F27BD3EF07DA8F8C4C8BB3E009E3CDFBD9AC583EC10414D3042DF3ACC85678BACC921988B2597872F2AFD9E9E90C121201A13599CCEFB62946092C7F909FE759BA841BBC05F17516C1B8A89F9396454975F20924B0D880253C0B2EB3ACC00017E1B4EA1B4C3EC408103E16305E0593CD8FEF7F2BE002E759BA5E6C004620BE7FDD40D2BE0271016BAEDF6F7E7465FC24A48CCF409A66645A227D2FC103261211EA23111EBF52B64AC1CE826B80974F7C17D2E93FF05578401EDDE6D906E6F8F50EAEEA815751309989E366F240368C1B43E7267FA5F88730987CDAC631788C215B22B2860B9CE5F0DF308539C030BA0518C33CA56361C9BB32AB34C76249869FDAE671A0110EA3710F4172FA3B885144C568685D901FF7047E3C399C6F9DA885FDA97D02CF685D4248C76530B98371D95A3CA14D05E769098C87BAFD32CF92BB2C6EF0523D7E5864DB7C4926BBCFD4B67B90AF21F66324B43012EA19093B1809B58CCC67ED3EE8DC1D94C4E7B4392E50B189C12BFDD14C46EC1531B86465D10B8C7E85E91A3FB109AFC14BF384FC194C7E4B11B1CF0C647D41774B5880B91E7674C51F588756DDFC7345DF42A32FF2AA717AEC71844303372AFA84C641F0AB887C01604F004A735F6F31ED7C48166E4151FC95E5D1DE275E8018EF785267547F7CC1308D08782A744F7E0105AC39A37B4E0B7AF3B941F828FE4071ACDDBFE2540F5CE7762F9BFA28FBDAD8D1D7E2FC17A5BF6645E1C231EB6AE4B7EE61E3B6E936EC3864EBF71999A405066904F2E8023EA3DACBAEBDAB6C4B66F276FCAE21184A82BC9414307F26DC3CC33BF22FDDAD7E042DA79DFEB063806E3A71079ED4A61E7A728741406B60FF19C18C8834EC85A2B2035E14FAA0A031142A06C416050152F320FDDFC1352A70FE4A1AF2D73E28B80539510BE92AAF89B6F7F9138A234D673B72B879BC0ED7D3F05DC7E1EA662418D3FB9E99BC876E77ED3B99A0F2A128B26565A7E543E941EB397C4CA389CD86B5CE07E7215C6F638C36315A122ECE82EF9445E920DC605FF56A24AA27D3E9A92C372761B7E046E7C6C4A7DDD369F9959D34F7D5B0BA492ECB3D686124136662D464CF5AF698F7E52EBDC10AEE1509FAD3D3A821C583DC010A64F7D3BEC8831644882218B7AD36A4C08193067F7CCC802E0AB15BC50BF10907BEC291E50CF724271F8C34B1A58D4CB65C55816E0F3175D14CCBAA8D24A35995DAA0E728326A353950C6EA04272F331820E236D77236B728F4397CC18AAC74CC02627E5520B10EAD3B200AABC8268EA722E84657A259065748D60D6F306E9BBD3DDF540EDA360B156621151AACC542A1F1A7352444575B26C4695623157B49E0BA995E26652FDCC12F6352080BA9F8F30E8E184789E95476F545511D96C11C5C5297C3CD57F3F3D6EC42F9F9652ECBDD6399E4174A7571BAFC35178F8D63DCB0215C5CB47D6084B1674588D687F3F1E286A143F6D7EC4BDC6371C4BB1E8D0D317A71763F8E0773750474D90D9DE7B6133C88174A9D22876E228783450E772BB27091AC4A6C74EDACCE1DC72DF3123A24D6F973B6251B24AE56C1462FCFEAE7F51657AB5F5F719B780CF3E658DB7C5665CAD40FE633434ACDFC1A6C36285D732936F593C9A2CAAF39FF7EE19FE192543466CB4293E8C2B86533E12C076B28B5D2887B042F515EE00B80C123A0C1ABF32851BA39FAAECD6CA20BABEAAA71C59AFEF46FD1496E528DA69A3C1D7E092F8954094C71292094A1A28E9BD0FC2610835C13093FCFE26D929AA2E95DA39BDC1B9E42F3CC934AA8A112FA5091F36F786A729B1FD5B0836AD849753E93D4254362A66042DA9F32C49C0058EDF541F05313614A1A36F4E987ED067CC2BD3E4F4668381AA53407AC8F5AAE0AFAF7CDEA1B453F15B56F7BA848EF741F9B924CF474391D3C595DBB3BF5365D83A7D93EF5B06965FE8560D1CA27E3C3D177674B21DE2302103964235406C8CA0B27357144C2CF3247094A0161EF18D6F50DACE741D6B1EF19D61131F139C74C645C0E33F3D81DB9536A668A6041D4660FC35966A908A6B27CE24E4197A4C2D3D3B51F0D9CCCE1150F3019883840C9387237402A734FF8E1E503F7F155BC8727A00FB21D4C9D2CBE3D489F1D59274E5AB58C377B192C874474338C292C665A6D5288B0150DF92D5D94EA240F9E4CFD68FF5A17A31286838105985DCC3FEBEC6CE46968C5947B2A8592D5F571DAD33511DDD6A60BC466EFC1581D43EAC9983747ADA77155D0241F9610E424AE1C85F28684F962C6D90FE607B939681A35D86E5C7AAAA3A53302546CB74C4705992EC907A346BEA7B21FFC4623D27179A34F053F3603A2BF683B2A2CECCD7CB0FB2E77E3C1868C653AA4EBB89E8A68A88C6F36A4CBC7A3028A59EAC148112F302DE1D3B6A34B945477AA6B6E2907598AD3517C0DCDEDEB51E9DF2CEB98FA0F5DF51F8EA1FF7014FD8723EB3F3C62FDEB641DAC7FE16ADB7679D7F473BAA1D32CB4E6FEBAAF0359D21841F79A5BF9A352BD49D01115DFBDEF857EC3153F74DB57344655FC71EE7993A076C52B790E721716EBA89FB0DF2CCFA1CE31B0D71351920EAA2EC184C8FE8C229A70B0782D304CA6B4C374F1677C1E2398E2B6C33548D10A16F83EFB03A667417872F24E2A4AD2A360C8AC282221FC713455431095DDFA1D5E9F621FA7C21483CA85F4A1A02F16427FE0D18A850CA1561951AD7CCE0CF99038F2021D3BC1A1A62E41FA0CF2E513C8BF49C0CBB7DEB50638BFB7B7E678E7696CDD1DAABAC59BD09EB958C530504805280611E38B4A0C22245D3A8B14D5AF577D8DAB1035ECBD15F838C2E866EC7085157673A69A6A2AACE20CF81F8F7C49857E14CC1515FAD1E3A28F6363E160B50F768204AEEC411FC7882F7AD067FC0EF5F4766B148C6659E51204A311162A0C781C2DEE55035CBE28ADBE11F4FE1E52A0517FA5E8FF9126D13CA47A4320A6C60BE7E46D54B957BFCD51BA441B10F31CAB6FE22E96822E1E2327B75CC00D0DF7A75890CA65A2AE5813A32A01DA26FAC81FD57E51F3386A364596F6A066A7EFFDF98B5DCF4FD5FDF13292A68D59A4A3EBDA1953DD7747FB55B679537F51F688CA3EE0CEF62E722365FBF8179AE907A3B12C7B477EF2E828F0C09B2DE768FF48B015B911D2367C4BCD1C1403E6B4E24322A03B79641F66DFB5CED768A6DFCF92BCBD43C0CBD6742697ED41FD8E45BDC652BE87F978738AF73130FB55BB74F7CA8277F2C7D9B2D6343583CC1583AA5BD6B3207ACC887AAB5082E18B7A6D39216335211D61FD77F632D906A20A619661AA216D2AD1A0F0EC568448CB7DD36C9FC5A148916E86BAD161E9A54245CA3452BB6E32BE0BD24CB9BBFA153C6EDA9C2F6BFD06B5EA8347C906BB40032A541C934023D5911137219FAFDB2596D3421CAE52CC7109B5E392598AA5F3A81DE6BC50C755054A32BBCE45B07629EEC8F5E17A42D80F0B872D6CD64F440FDD8F53D947CD6C23BE1EF7FF69114FB340EB96044DD64BE152F0F2589FAB749535FEA6C451D345B906C620222EE0871CA3155862D2BC8445515EE63625029247185DA5375BBCD96222324C1E63E1CA8C3AAD5DF397E58B449EE7379BB246FA182234595937E92F5B14478CEF4BF556CC44827AC3F5052DD525A617B5EB5746E953963A12AA978F39F1F730D9C4845871932EC03334F3665F4371C5E61708AC73E207D734DAF1E427815F94BCFCF47F1569C4B4116E0000, '5.0.0.net45')
