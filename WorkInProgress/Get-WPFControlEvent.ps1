﻿function Get-WPFControlEvent
{
<#
.EXAMPLE
    Get-WPFControlEvent -Control $WPFdataGrid
           TypeName: System.Windows.Controls.DataGrid

        Name                         MemberType Definition                                                                                                                            
        ----                         ---------- ----------                                                                                                                            
        AddingNewItem                Event      System.EventHandler`1[System.Windows.Controls.AddingNewItemEventArgs] AddingNewItem(System.Object, System.Windows.Controls.AddingNe...
        AutoGeneratedColumns         Event      System.EventHandler AutoGeneratedColumns(System.Object, System.EventArgs)                                                             
        AutoGeneratingColumn         Event      System.EventHandler`1[System.Windows.Controls.DataGridAutoGeneratingColumnEventArgs] AutoGeneratingColumn(System.Object, System.Win...
        BeginningEdit                Event      System.EventHandler`1[System.Windows.Controls.DataGridBeginningEditEventArgs] BeginningEdit(System.Object, System.Windows.Controls....
        CellEditEnding               Event      System.EventHandler`1[System.Windows.Controls.DataGridCellEditEndingEventArgs] CellEditEnding(System.Object, System.Windows.Control...
        ...
#>
	PARAM ($Control)
	BEGIN
	{
		Add-Type –assemblyName PresentationFramework
		
		Add-Type –assemblyName PresentationCore
		
		Add-Type –assemblyName WindowsBase
	}
	PROCESS
	{
		[System.Windows.Controls.DataGrid].GetEvents()
	}
}