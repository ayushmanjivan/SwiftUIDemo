//
//  GridViewBootcamp.swift
//  demoProject
//
//  Created by ayushman.soni on 13/01/25.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
//        Grid {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
        
//        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
//            ForEach(0..<4) { rowIndex in
//                GridRow(alignment: .bottom) {
//                    ForEach(0..<4) { columnIndex in
//                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
//                        if cellNumber == 7 {
//                            EmptyView()
////                            Color.green
////                                .gridCellUnsizedAxes([.horizontal, .vertical])
//                        } else {
//                            cell(int: cellNumber)
//                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
//                                .gridCellAnchor(.leading)
//                                .gridColumnAlignment(
//                                    cellNumber == 1 ? .trailing :
//                                        cellNumber == 4 ? .leading :
//                                            .center)
//                        }
//                    }
//                }
//            }
//        }
        Grid {
            GridRow {
                Color.green.opacity(0.5)
                    .gridCellColumns(3)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.red.opacity(0.3)
                    .gridCellColumns(2)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.pink.opacity(0.5)
                    .gridCellColumns(3)
            }
            GridRow {
                Color.green.opacity(0.5)
                Color.yellow.opacity(0.5)
                    .gridCellColumns(2)
            }
        }
        .ignoresSafeArea()
    }
    
    private func cell(int: Int) -> some View{
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}
