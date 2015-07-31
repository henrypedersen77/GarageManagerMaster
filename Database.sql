/**** Adds data to the database ***/
SET IDENTITY_INSERT [dbo].[ProductTypes] ON
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (1, N'Brakes')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (2, N'Lubricants & Fluids')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (3, N'Cleaning')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (4, N'Engine Parts')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (5, N'Suspension')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (6, N'Transmission')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (7, N'Cooling & Heating')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (8, N'Electrical')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (9, N'Body & Exhaust')
INSERT [dbo].[ProductTypes] ([ID], [Name]) VALUES (10, N'Accessories')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF

SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (11, 10, N'Brake Discs', CAST(100 AS Decimal(18, 0)), N'A major component of your cars braking system', N'BrakeDiscs.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (12, 4, N'Cylinder Heads', CAST(150 AS Decimal(18, 0)), N'The cylinder head is the metal casing which covers the engine. It seals the main cylinders of the engine and prevents oil and other substances from finding their way inside. It also contains a number of valves vital to the engine. Internally the cylinder head has passages called ports for the fuel / air mixture to travel to the inlet valves from the intake manifold, for exhaust gases to travel from the exhaust valves to the exhaust manifold and for antifreeze to cool the head and engine.', N'Cylinder Heads.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (13, 5, N'Shock Absorbers', CAST(100 AS Decimal(18, 0)), N'The shock absorber is a vital part of the vehicle suspension, its prime function is to keep your wheels in contact with the ground at all times by absorbing the energy from the coil spring.', N'Shock Absorbers.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (15, 6, N'Clutch kits', CAST(100 AS Decimal(18, 0)), N'Your engine is constantly on the go, constantly spinning. The clutch is the system by which the engine is engaged and the car drives. It is the job of the clutch to create a smooth engagement between the engine and a non-spinning transmission.', N'Clutch kits.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (16, 7, N'Fans & Parts', CAST(25 AS Decimal(18, 0)), N'Car Fans help to maintain the comfortable temperature inside the car. Their maintenance requires various car fan parts like car fan coupling, fan blade, car fan switches and many more. ', N'Fans.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (17, 8, N'Car Battery', CAST(100 AS Decimal(18, 0)), N'The main function of a car battery is to supply electricity to various car systems. It powers the starting system through the starter motor and the ignition system. It also provides energy for the lights. In older cars, leaving car lights on was a sure way to run down the energy in car battery, but in modern cars an alarm system prevents you from doing this. If you keep your car long enough, you will probably have to replace the battery at some point.', N'Car Battery.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (18, 9, N'Body Panels', CAST(100 AS Decimal(18, 0)), N'A body panel refers to a part of the car body such as a rear wing, a front wing or a bonnet. ', N'Body Panels.jpg')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Price], [Description], [Image]) VALUES (19, 2, N'Engine Oil', CAST(50 AS Decimal(18, 0)), N'Engine oil is the life blood of your car. It is a vital component of the engine system, lubricating moving parts and ensuring your car has a long and happy life. The grade and type of oil you use can also impact your car economy and emissions, so it is essential that you use the correct grade of oil.', N'Engine Oil.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF